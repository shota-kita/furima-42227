const price = () => {
  const priceInput = document.getElementById("item-price")
  const profitValue = document.getElementById("profit")
  console.log(priceInput)
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    console.log(inputValue);
    const addTaxDom = document.getElementById("add-tax-price");
    addTaxDom.innerHTML = (Math.floor(inputValue * 0.1))
    const taxValue = inputValue * 0.1
    console.log(taxValue)
    const profitValue = document.getElementById("profit")
    profitValue.innerHTML = (Math.floor(inputValue - taxValue))
    console.log(profitValue)
  })
};
window.addEventListener("turbo:load", price);
window.addEventListener("turbo:render", price);