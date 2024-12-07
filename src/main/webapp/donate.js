document.addEventListener("DOMContentLoaded", () => {
    const form = document.querySelector("#donationForm");
    const donationTable = document.querySelector("#donationTable");

    form.addEventListener("submit", (e) => {
        e.preventDefault(); // Prevent default form submission

        // Get input values
        const donorName = document.querySelector("#donorName").value.trim();
        const donationAmount = document.querySelector("#donationAmount").value.trim();
        const upiId = document.querySelector("#upiId").value.trim();

        // Validate inputs
        if (!donorName) {
            alert("Donor name is required.");
            return;
        }
        if (!donationAmount || isNaN(donationAmount) || donationAmount <= 0) {
            alert("Please enter a valid donation amount.");
            return;
        }
        if (!upiId || !upiId.includes("@")) {
            alert("Please enter a valid UPI ID.");
            return;
        }

        // Show a message to indicate payment processing
        alert("Processing payment... Please wait.");

        // Delay adding the new row by 10 seconds
        setTimeout(() => {
            // Add a new row to the table
            const newRow = donationTable.insertRow();
            newRow.innerHTML = `
                <td>${donorName}</td>
                <td>₹${parseFloat(donationAmount).toFixed(2)}</td>
                <td>${upiId}</td>
            `;

            // Reset the form
            form.reset();

            alert("Donation successfully recorded!");
        }, 10000); // 10 seconds delay
    });
});
