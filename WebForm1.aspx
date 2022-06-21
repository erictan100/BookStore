<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment_2.WebForm1" %>

<!DOCTYPE html>

<script runat="server">

    protected void Calculate(object sender, EventArgs e)
    {
        int book1 = Convert.ToInt32(DropDownList1.SelectedValue);
        int book2 = Convert.ToInt32(DropDownList2.SelectedValue);
        int book3 = Convert.ToInt32(DropDownList3.SelectedValue);
        int book4 = Convert.ToInt32(DropDownList4.SelectedValue);
        int book5 = Convert.ToInt32(DropDownList5.SelectedValue);
        int book6 = Convert.ToInt32(DropDownList6.SelectedValue);
        int book7 = Convert.ToInt32(DropDownList7.SelectedValue);
        int book8 = Convert.ToInt32(DropDownList8.SelectedValue);
        int book9 = Convert.ToInt32(DropDownList9.SelectedValue);
        int book10 = Convert.ToInt32(DropDownList10.SelectedValue);
        int book11 = Convert.ToInt32(DropDownList11.SelectedValue);
        int book12 = Convert.ToInt32(DropDownList12.SelectedValue);

        String prices1 = DropDownList1.SelectedValue;
        String prices2 = DropDownList2.SelectedValue;
        String prices3 = DropDownList3.SelectedValue;
        String prices4 = DropDownList4.SelectedValue;
        String prices5 = DropDownList5.SelectedValue;
        String prices6 = DropDownList6.SelectedValue;
        String prices7 = DropDownList7.SelectedValue;
        String prices8 = DropDownList8.SelectedValue;
        String prices9 = DropDownList9.SelectedValue;
        String prices10 = DropDownList10.SelectedValue;
        String prices11 = DropDownList11.SelectedValue;
        String prices12 = DropDownList12.SelectedValue;

        int totalBook = 0;

        if (book1 != 0)
        {
            totalBook++;
        }
        if (book2 != 0)
        {
            totalBook++;
        }
        if (book3 != 0)
        {
            totalBook++;
        }
        if (book4 != 0)
        {
            totalBook++;
        }
        if (book5 != 0)
        {
            totalBook++;
        }
        if (book6 != 0)
        {
            totalBook++;
        }
        if (book7 != 0)
        {
            totalBook++;
        }
        if (book8 != 0)
        {
            totalBook++;
        }
        if (book9 != 0)
        {
            totalBook++;
        }
        if (book10 != 0)
        {
            totalBook++;
        }
        if (book11 != 0)
        {
            totalBook++;

        }
        if (book12 != 0)
        {
            totalBook++;
        }

        int totalPrice = book1 + book2 + book3 + book4 + book5 + book6 + book7 + book8 + book9 + book10 + book11 + book12;

        if (totalBook < 3)
        {
            Literal failed = new Literal()
            {
                Text = ("Please select at least 3 books to loan")
            };
            PlaceHolder1.Controls.Add(failed);
        }
        else
        {
            Literal calculation = new Literal()
            {
                Text = ("Total Price: " + totalPrice)
            };
            PlaceHolder1.Controls.Add(calculation);
            Literal price1 = new Literal()
            {
                Text = (prices1)
            };
            Literal price2 = new Literal()
            {
                Text = (prices2)
            };
            Literal price3 = new Literal()
            {
                Text = (prices3)
            };
            Literal price4 = new Literal()
            {
                Text = (prices4)
            };
            Literal price5 = new Literal()
            {
                Text = (prices5)
            };
            Literal price6 = new Literal()
            {
                Text = (prices6)
            };
            Literal price7 = new Literal()
            {
                Text = (prices7)
            };
            Literal price8 = new Literal()
            {
                Text = (prices8)
            };
            Literal price9 = new Literal()
            {
                Text = (prices9)
            };
            Literal price10 = new Literal()
            {
                Text = (prices10)
            };
            Literal price11 = new Literal()
            {
                Text = (prices11)
            };
            Literal price12 = new Literal()
            {
                Text = (prices12)
            };
            PPlaceHolder1.Controls.Add(price1);
            PPlaceHolder2.Controls.Add(price2);
            PPlaceHolder3.Controls.Add(price3);
            PPlaceHolder4.Controls.Add(price4);
            PPlaceHolder5.Controls.Add(price5);
            PPlaceHolder6.Controls.Add(price6);
            PPlaceHolder7.Controls.Add(price7);
            PPlaceHolder8.Controls.Add(price8);
            PPlaceHolder9.Controls.Add(price9);
            PPlaceHolder10.Controls.Add(price10);
            PPlaceHolder11.Controls.Add(price11);
            PPlaceHolder12.Controls.Add(price12);
        }

    }

    protected void Checkout(object sender, EventArgs e)
    {
        string str = "";
        str += "Name: " + TextBox1.Text + "<br />";
        str += "Email Address: " + TextBox2.Text + "<br />";
        str += "Phone Number: " + TextBox3.Text + "<br />";
        if (TextBox1.Text=="" || TextBox2.Text=="" || TextBox3.Text=="")
        {
            Literal noInfo = new Literal()
            {
                Text = ("Some information is missing, please check again.")
            };
            PlaceHolder2.Controls.Add(noInfo);
        }
        else
        {
            Literal info = new Literal()
            {
                Text = ("Submit successfully, your information: <br />" + str)
            };
            PlaceHolder2.Controls.Add(info);
        }
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 2</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="Header">Welcome to BookStore</h1>
            <hr align="left" color="Gainsboro" style="width: 1482px" />
        </div>
        <h2>Genre</h2>
        <nav>
            <a href="#ActionTable">Action</a> |
            <a href="#AdventureTable">Adventure</a> |
            <a href="#ComicsTable">Comics</a> |
            <a href="#ClassicsTable">Classics</a>
            <a href="#CalculateButton">Calculate</a>
            <a href="#CheckoutButton">Checkout</a>
        </nav>
        <hr align="left" color="Gainsboro" style="width: 1482px" />

        <!--- Coverpage, title, loan prices -->
        <!--- genres such as action and adventure, comics, classics, and so on -->
        <!--- Action table-->
        <h2 class="genreTitle">Action</h2>
            <asp:Table ID="ActionTable" runat="server" Width="1433px" BorderWidth="5" Font-Bold="true" CellPadding="5" CellSpacing="5" Height="108px" BackColor="white" HorizontalAlign="Center">
                <asp:TableHeaderRow runat="server" >
                    <asp:TableHeaderCell BackColor="MediumSeaGreen">Coverpage</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="LightGreen">Title</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="MediumSeaGreen">Loan Period</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="LightGreen">Loan Prices ($)</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Cover/HungerGames.jpg" Width="100" Height="150" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        The Hunger Games (The Hunger Games, #1)
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder1" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image2" runat="server" Width="100" Height="150" ImageUrl="~/Cover/Mockingjay.jpg" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        Mockingjay (The Hunger Games, #3)
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder2" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Cover/CatchingFire.jpg" Width="100" Height="150" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        Cathching Fire (The Hunger Games, #2)
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder3" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        <br />
        <!--- Adventure table -->
        <h2 class="genreTitle">Adventure</h2>
            <asp:Table ID="AdventureTable" runat="server" Width="1433px" BorderWidth="5" Font-Bold="true" CellPadding="5" CellSpacing="5" Height="108px" BackColor="white" HorizontalAlign="Center">
                <asp:TableHeaderRow runat="server" >
                    <asp:TableHeaderCell BackColor="MediumSeaGreen">Coverpage</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="LightGreen">Title</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="MediumSeaGreen">Loan Period</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor ="LightGreen">Loan Prices ($)</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Cover/Hobbit.jpg" Width="100" Height="150" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        The Hobbit, or There and Back Again (Paperback)
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder4" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image5" runat="server" Width="100" Height="150" ImageUrl="~/Cover/TreasureIsland.jpg" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        Treasure Island (Hardcover)
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder5" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/Cover/LightningThief.jpg" Width="100" Height="150" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        The Lightning Thief (Percy Jackson and the Olympians, #1)
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList6" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder6" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        <br />
        <!--- Comics Table -->
        <h2 class="genreTitle">Comics</h2>
            <asp:Table ID="ComicsTable" runat="server" Width="1433px" BorderWidth="5" Font-Bold="true" CellPadding="5" CellSpacing="5" Height="108px" BackColor="white" HorizontalAlign="Center">
                <asp:TableHeaderRow runat="server" >
                    <asp:TableHeaderCell BackColor="MediumSeaGreen">Coverpage</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="LightGreen">Title</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="MediumSeaGreen">Loan Period</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="LightGreen">Loan Prices ($)</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/Cover/IWillNotDieAlone.jpg" Width="100" Height="150" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        I Will Not Die Alone
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList7" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder7" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image8" runat="server" Width="100" Height="150" ImageUrl="~/Cover/Tidesong.jpg" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        Tidesong
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList8" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder8" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image9" runat="server" ImageUrl="~/Cover/TheGoldenHour.jpg" Width="100" Height="150" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        The Golden Hour
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList9" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder9" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        <br />
        <!--- Classics Table -->
        <h2 class="genreTitle">Classics</h2>
            <asp:Table ID="ClassicsTable" runat="server" Width="1433px" BorderWidth="5" Font-Bold="true" CellPadding="5" CellSpacing="5" Height="108px" BackColor="white" HorizontalAlign="Center">
                <asp:TableHeaderRow runat="server" >
                    <asp:TableHeaderCell BackColor="MediumSeaGreen">Coverpage</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="LightGreen">Title</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="MediumSeaGreen">Loan Period</asp:TableHeaderCell>
                    <asp:TableHeaderCell BackColor="LightGreen">Loan Prices ($)</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/Cover/TheGreatGatsby.jpg" Width="100" Height="150" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        The Great Gatsby
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList10" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder10" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image11" runat="server" Width="100" Height="150" ImageUrl="~/Cover/ToKillaMockingbird.jpg" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        To Kill a Mockingbird
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList11" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder11" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Image ID="Image12" runat="server" ImageUrl="~/Cover/ThePictureofDorianGray.jpg" Width="100" Height="150" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        The Picture of Dorian Gray
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="DropDownList12" runat="server">
                            <asp:ListItem Value="0">No loan</asp:ListItem>
                            <asp:ListItem Value="10">1 week</asp:ListItem>
                            <asp:ListItem Value="20">2 Weeks</asp:ListItem>
                            <asp:ListItem Value="30">1 Month</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:PlaceHolder ID="PPlaceHolder12" runat="server"></asp:PlaceHolder>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        <!--- Calculate Button -->
        <br />
        <asp:Button ID="CalculateButton" runat="server" Text="Calculate Total Price" OnClick="Calculate" Width="400"/>
        <br />
        <h2>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </h2>

        <!--- Checkout Button -->
        <asp:Table ID="Table2" runat="server" BackColor="White">
            <asp:TableRow runat="server">
                <asp:TableCell>
                    Name: 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell>
                    Email Address: 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell>
                    Phone Number: 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <asp:Button ID="CheckoutButton" runat="server" Text="Checkout" OnClick="Checkout" />
        <br />
        <h2>
        <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
        </h2>
    </form>
</body>
</html>
