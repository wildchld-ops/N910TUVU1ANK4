.class Landroid/text/method/SmileyPickerDialog$OptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmileyPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/SmileyPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/SmileyPickerDialog;


# direct methods
.method public constructor <init>(Landroid/text/method/SmileyPickerDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/method/SmileyPickerDialog;->access$200(Landroid/text/method/SmileyPickerDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-virtual {v2, p1}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    invoke-static {v1, p1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x7

    if-lt p1, v1, :cond_1

    const/16 v1, 0xb

    if-gt p1, v1, :cond_1

    add-int/lit8 v1, p1, -0x7

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition3:I
    invoke-static {v3}, Landroid/text/method/SmileyPickerDialog;->access$400(Landroid/text/method/SmileyPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1b

    :goto_1
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # setter for: Landroid/text/method/SmileyPickerDialog;->prePosition3:I
    invoke-static {v1, v0}, Landroid/text/method/SmileyPickerDialog;->access$402(Landroid/text/method/SmileyPickerDialog;I)I

    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/method/SmileyPickerDialog;->access$200(Landroid/text/method/SmileyPickerDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition3:I
    invoke-static {v3}, Landroid/text/method/SmileyPickerDialog;->access$400(Landroid/text/method/SmileyPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    invoke-static {v1, v0, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    const/16 v0, 0x30

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition3:I
    invoke-static {v3}, Landroid/text/method/SmileyPickerDialog;->access$400(Landroid/text/method/SmileyPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x4

    goto :goto_1
.end method

.method public final getItemId(I)J
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    int-to-long v1, v0

    return-wide v1

    :cond_0
    const/4 v1, 0x7

    if-lt p1, v1, :cond_1

    const/16 v1, 0xb

    if-gt p1, v1, :cond_1

    add-int/lit8 v1, p1, -0x7

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition4:I
    invoke-static {v3}, Landroid/text/method/SmileyPickerDialog;->access$500(Landroid/text/method/SmileyPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1b

    :goto_1
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # setter for: Landroid/text/method/SmileyPickerDialog;->prePosition4:I
    invoke-static {v1, v0}, Landroid/text/method/SmileyPickerDialog;->access$502(Landroid/text/method/SmileyPickerDialog;I)I

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    const/16 v0, 0x30

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition4:I
    invoke-static {v3}, Landroid/text/method/SmileyPickerDialog;->access$500(Landroid/text/method/SmileyPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x4

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Landroid/text/method/SmileyPickerDialog;->access$100(Landroid/text/method/SmileyPickerDialog;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090040

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez p1, :cond_0

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/method/SmileyPickerDialog;->access$200(Landroid/text/method/SmileyPickerDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-virtual {v3, p1}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Landroid/widget/TextView;->setText([CII)V

    :goto_0
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_0
    const/4 v2, 0x7

    if-lt p1, v2, :cond_1

    const/16 v2, 0xb

    if-gt p1, v2, :cond_1

    add-int/lit8 v2, p1, -0x7

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v4, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition2:I
    invoke-static {v4}, Landroid/text/method/SmileyPickerDialog;->access$300(Landroid/text/method/SmileyPickerDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1b

    :goto_1
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/method/SmileyPickerDialog;->access$200(Landroid/text/method/SmileyPickerDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-virtual {v3, v1}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/TextView;->setText([CII)V

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # setter for: Landroid/text/method/SmileyPickerDialog;->prePosition2:I
    invoke-static {v2, v1}, Landroid/text/method/SmileyPickerDialog;->access$302(Landroid/text/method/SmileyPickerDialog;I)I

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    if-ne p1, v2, :cond_2

    const/16 v1, 0x30

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v4, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition2:I
    invoke-static {v4}, Landroid/text/method/SmileyPickerDialog;->access$300(Landroid/text/method/SmileyPickerDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x4

    goto :goto_1
.end method
