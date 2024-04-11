//! Copyright [year] <Copyright Owner>
#ifndef STRUCTURES_LINKED_LIST_H
#define STRUCTURES_LINKED_LIST_H

#include <cstdint>


namespace structures {

//! ...
template<typename T>
class LinkedList {
 public:
    //! ...
    LinkedList();  // construtor padrão
    //! ...
    ~LinkedList();  // destrutor
    //! ...
    void clear();  // limpar lista
    //! ...
    void push_back(const T& data);  // inserir no fim
    //! ...
    void push_front(const T& data);  // inserir no início
    //! ...
    void insert(const T& data, std::size_t index);  // inserir na posição
    //! ...
    void insert_sorted(const T& data);  // inserir em ordem
    //! ...
    T& at(std::size_t index);  // acessar um elemento na posição index
    //! ...
    T pop(std::size_t index);  // retirar da posição
    //! ...
    T pop_back();  // retirar do fim
    //! ...
    T pop_front();  // retirar do início
    //! ...
    void remove(const T& data);  // remover específico
    //! ...
    bool empty() const;  // lista vazia
    //! ...
    bool contains(const T& data) const;  // contém
    //! ...
    std::size_t find(const T& data) const;  // posição do dado
    //! ...
    std::size_t size() const;  // tamanho da lista

 private:
    class Node {  // Elemento
     public:
        explicit Node(const T& data):
            data_{data}
        {}

        Node(const T& data, Node* next):
            data_{data},
            next_{next}
        {}

        T& data() {  // getter: dado
            return data_;
        }

        const T& data() const {  // getter const: dado
            return data_;
        }

        Node* next() {  // getter: próximo
            return next_;
        }

        const Node* next() const {  // getter const: próximo
            return next_;
        }

        void next(Node* node) {  // setter: próximo
            next_ = node;
        }

     private:
        T data_;
        Node* next_{nullptr};
    };

    Node* end() {  // último nodo da lista
        auto it = head;
        for (auto i = 1u; i < size(); ++i) {
            it = it->next();
        }
        return it;
    }

    Node* head{nullptr};
    std::size_t size_{0u};
};

}  // namespace structures

#endif


template<typename T> // construtor padrão
structures::LinkedList<T>::LinkedList(){

} 

template<typename T> // destrutor
structures::LinkedList<T>::~LinkedList(){

}

template<typename T> //limpar lista
structures::LinkedList<T>::void clear(){

}

template<typename T> //inserir no fim
structures::LinkedList<T>::void push_back(const T& data){
    if(empty()){

    }

}
    
template<typename T> // inserir no início
structures::LinkedList<T>::void push_front(const T& data){
    if(empty()){
        head = &new Node(data);
    } else {
        head = &new Node(data, head);
    }
}  

template<typename T>
structures::LinkedList<T>::void insert(const T& data, std::size_t index);  // inserir na posição
    //! ...
template<typename T>
structures::LinkedList<T>::void insert_sorted(const T& data);  // inserir em ordem
    //! ...
template<typename T>
T& structures::LinkedList<T>::at(std::size_t index);  // acessar um elemento na posição index
    //! ...
template<typename T>
T structures::LinkedList<T>::pop(std::size_t index){

}  // retirar da posição

template<typename T>
T structures::LinkedList<T>::pop_back(){

}  // retirar do fim

template<typename T>
T structures::LinkedList<T>::pop_front(){

}  // retirar do início
    //! ...
template<typename T>
void structures::LinkedList<T>::remove(const T& data){

}  // remover específico
    
template<typename T>
bool structures::LinkedList<T>::empty() const{

}  // lista vazia

template<typename T>
bool structures::LinkedList<T>::contains(const T& data) const{

}  // contém
    
std::size_t find(const T& data) const{

}  // posição do dado
    
std::size_t size() const{
    
} // tamanho da lista