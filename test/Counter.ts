import { ethers } from "hardhat";
import { expect } from "chai";

describe("Counter", function() {
  it("should add, substract, multiply and divide two numbers", async function() {
    const Counter = await ethers.getContractFactory("Counter");
    const counter = await Counter.deploy();
    await counter.deployed();

    await counter.add(2, 3);
    await counter.subtract(5,4);
    await counter.multiply(2,3)
    await counter.divide(6,3)
    const [total, subtracted, multiplied, divided] = await counter.getResults();

    expect(total).to.equal(5);
    expect(subtracted).to.equal(1);
    expect(multiplied).to.equal(6);
    expect(divided).to.equal(2);
  });
});
