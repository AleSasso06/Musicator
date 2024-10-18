     <style>
     
     	        #go-top {
			    position: fixed;
			    bottom: -50px; 
			    right: 20px;
			    z-index: 100; 
			    width: 2.5rem;
			    height: 2.5rem;
			    background-color: #5C8AAD !important;
			    transition: all 500ms ease;
			    display: flex;
			    justify-content: center;
			    align-items: center;
			    cursor: pointer;
			    border: none;
			}
			
			#go-top:hover {
			    background-color: #C2185B !important;
			}
			
			#go-top.attivo {
			    bottom: 20px; 
			}
	        
	        @keyframes moveTop {
	            0% {
	                top: 100px;
	                opacity: 0
	            }
	
	            50% {
	                top: 0;
	                opacity: 1
	            }
	
	            100% {
	                top: -100px;
	                opacity: 0
	            }
	        }
	 </style>
     
     	<button id="go-top" aria-label="go-top" onclick="goTop();" title="torna a inizio pagina">
	    	<img src="images/go-top.svg" alt="Torna su" width="40" height="40">
		</button>
     
     
     <script>
        
	     window.onscroll = function () {
	    	    console.log('Scorrimento attuale:', document.documentElement.scrollTop);
	    	    if (document.body.scrollTop > 400 || document.documentElement.scrollTop > 400) {
	    	        document.getElementById("go-top").classList.add("attivo");
	    	    } else {
	    	        document.getElementById("go-top").classList.remove("attivo");
	    	    }
	    	};    
	    	
    </script>
    