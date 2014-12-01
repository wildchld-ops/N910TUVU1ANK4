.class Lcom/android/phone/AllowDataAccess$RoamAdapter;
.super Landroid/widget/BaseAdapter;
.source "AllowDataAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AllowDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/AllowDataAccess;


# direct methods
.method public constructor <init>(Lcom/android/phone/AllowDataAccess;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/AllowDataAccess$RoamAdapter;->this$0:Lcom/android/phone/AllowDataAccess;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/AllowDataAccess$RoamAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AllowDataAccess$RoamAdapter;->this$0:Lcom/android/phone/AllowDataAccess;

    iget-object v0, v0, Lcom/android/phone/AllowDataAccess;->entries:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/AllowDataAccess$RoamAdapter;->this$0:Lcom/android/phone/AllowDataAccess;

    iget-object v0, v0, Lcom/android/phone/AllowDataAccess;->entries:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/android/phone/AllowDataAccess$RoamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040047

    invoke-virtual {v4, v5, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    :goto_0
    const v4, 0x7f0a009b

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/AllowDataAccess$RoamAdapter;->this$0:Lcom/android/phone/AllowDataAccess;

    iget-object v4, v4, Lcom/android/phone/AllowDataAccess;->entries:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a010b

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/phone/AllowDataAccess$RoamAdapter;->this$0:Lcom/android/phone/AllowDataAccess;

    # getter for: Lcom/android/phone/AllowDataAccess;->mCurrentMode:I
    invoke-static {v4}, Lcom/android/phone/AllowDataAccess;->access$000(Lcom/android/phone/AllowDataAccess;)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/AllowDataAccess$RoamAdapter;->this$0:Lcom/android/phone/AllowDataAccess;

    iget-object v5, v5, Lcom/android/phone/AllowDataAccess;->entryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object v3

    :cond_1
    move-object v3, p2

    check-cast v3, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method
