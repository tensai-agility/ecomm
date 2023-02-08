
function Product(props){
    const {x,showModal}=props
    return (
        <div className="col-sm-3" key={x.prodid}>
            <div className="card text-center text-white mb-3 bg-transparent" style={{boxShadow:"0 0 3px 3px white"}}>
                <div className="card-header p-1 border-bottom border-white">
                    <h5 className="label_color">{x.pname}</h5>
                </div>
                <div className="card-body py-1" style={{width:"100%",height:"250px",margin:"1rem 0"}} >
                <img style={{maxWidth:"100%",maxHeight:"100%"}} src={BASE_API_URL+"/"+x.photo} className="img-thumnail" />
                <h6 className="float-left">Brand :{x.brand}</h6>                
                <h6 className="float-right">Price: &#8377; {x.price}</h6>                           
                </div>
                <div className="card-footer p-1">
                    <button onClick={e=>showModal(x)} className="btn btn-primary btn-sm">Buy Now</button>
                </div>
            </div>
        </div>
    )
}

export default Product;
