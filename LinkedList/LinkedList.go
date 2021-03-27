package main

import "fmt"
import "errors"
import "log"

type Node struct {
	index int
	data int 
	nxt_node *Node
}

type List struct {
	head *Node
	size int
}

func (list *List) add(node *Node) (*Node, error) {
	if node == nil {
		return nil, errors.New("You can't add a nil node")
	}

	if list.head == nil {
		list.head = node
		node.index = 0
		list.size++
		return node, nil
	}
	
	current := list.head
	for current.nxt_node != nil {
		current = current.nxt_node
	}
	
	node.index = current.index + 1
	current.nxt_node = node
	list.size++
	return node, nil
}


func (list *List) get(index int) (*Node, error) {
	if list.head == nil {
		return nil, errors.New("The list is empty")
	}
		
	if index > list.size || index < 0 {
		return nil, errors.New("index < 0 or index > list size")
	}
		
	if index == 0 {
		return list.head, nil
	}
		
	current := list.head
	for current != nil {
		if current.index == index {
			return current, nil
		}
		current = current.nxt_node
	}
	return nil, errors.New("Can't find the node")
}



func (list *List) iter(index int) map[int]*Node {
	if list.head == nil {
		return nil
	}
	var m map[int]*Node
	m = make(map[int]*Node)
	for i := index; i < list.size; i++ {
		node, err := list.get(i) 
		if err != nil {
			log.Fatal(err)
		}
		m[node.index] = node
	}
	return m
}

func (list *List) delete(index int) (bool, *Node, error) {
	node, err := list.get(index)
	if err != nil {
		log.Fatal(err)
	}
	
	if list.size == index+1 {
		prvNode, err := list.get(index - 1)
		if err != nil {
			log.Fatal(err)
		}
		prvNode.nxt_node = nil 
		list.size--
		return true, node, nil
	}
	
	for _, n := range list.iter(index+1) {
		n.index-- 
	}

	if index == 0 {
		list.head = node.nxt_node
		node.nxt_node = nil
		list.size--
		return true, node, nil
	}
	
	if index > 0 {
		prvNode, err := list.get(index - 1)
		if err != nil {
			log.Fatal(err)
		}
		prvNode.nxt_node = node.nxt_node
		node.nxt_node = nil
		list.size--
		return true, node, nil
	}
	return false, node, err
}

func main() {
	list := List{}
	list.add(&Node{data: 1})
	list.add(&Node{data:2})
	list.add(&Node{data:35})
	list.add(&Node{data:45})
	
	fmt.Println(list.delete(3))
	fmt.Println(list.size)
	
	for i,v := range list.iter(0) {
		fmt.Println(i, v.data)
	}
}
