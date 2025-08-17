const price = () => {
  const priceInput = document.getElementById("item-price")
  const profitValue = document.getElementById("profit")
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    const addTaxDom = document.getElementById("add-tax-price");
    addTaxDom.innerHTML = (Math.floor(inputValue * 0.1))
    const taxValue = inputValue * 0.1
    profitValue.innerHTML = (Math.floor(inputValue - taxValue))
  })
};
window.addEventListener("turbo:load", price);
window.addEventListener("turbo:render", price);