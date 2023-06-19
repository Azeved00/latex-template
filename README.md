# Latex Template for FCUP
This is a very, very simple fcup report template that i have been using.

There are some inline guidelines in the form of comments but this is a really barebones so there isnt much.

## Usefull Commands
As some help here are some commands that might be usefull:
### A Citation 

    \cite{X} 
    
Don't forget to add the citation to the file bibliography
this is a citation example

    @article
    {
      X,
      title={X},
      author={X},
      journal={X},
      volume={X},
      number={X},
      year={X},
      publisher={X}
    }

Using google scholar you can click on **Cite** button, it then opens a pop-up window where you can click **BibTex**,
it will generate what you need to paste on the **bibliography.bib** file

### A Fancy Math Zone 
    
    $$ InformationGain(S,A) = Entropy(S) $$


### A Fancy Math Inline 

    $ Entropy(S) $


### A Sumation 

    \sum_{V_i \in A} p(V_i).Entropy(S| A = V_i)


### A Fraction 

    \frac{InformationGain(S,A)}{InformationSplit(S,A)}


### An Image 

    \includegraphics[width = 17cm]{Images/neuralnetwork.png}

    A figure with an image, caption and label (centered)
    \begin{figure}[htp]
        \centering
        \centerline{\includegraphics[width = 17cm]{Images/neuralnetwork.png}}
        \caption{simple feed forward network with 1 hidden layer}
        \label{fig:FNN}
    \end{figure}


### A Code block 

    \begin{algorithm}
    \caption{Top-down decision tree induction algorithms}\label{alg:cap}
    \begin{algorithmic}
      \Function{Main}{Set,Attributes}:
      
      \State $\textbf{Node }Root \gets empty$
      
      \If {All samples belong to same class}
          \State $Root \gets \textrm{label class}$
          \State \Return $Root$
      \EndIf
      
      \If {$Set$ is empty $or$ $Attributes$ is empty}
          \State $Root \gets \textrm{most probable class}$
         \State \Return $Root$
      \EndIf
      
      \State $ \textbf{Attribute } A \gets \textrm{ChoseBestAttribute(Set, Attributes)}$
      \State $ \textrm{Root's Attribute} \gets A $
      
      \For{\textbf{each} value, $V_i$, of A}
      \State $\textrm{Root's children} \gets Main(Set|A = V_i\textrm{, Attributes - A) }$
      \EndFor
      \State \Return $Root$
      \EndFunction
    \end{algorithmic}
    \end{algorithm}

