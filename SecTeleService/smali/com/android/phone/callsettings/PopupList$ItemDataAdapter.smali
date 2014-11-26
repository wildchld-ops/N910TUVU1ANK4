.class Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDataAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PopupList;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/PopupList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/PopupList;Lcom/android/phone/callsettings/PopupList$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/callsettings/PopupList;
    .param p2    # Lcom/android/phone/callsettings/PopupList$1;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;-><init>(Lcom/android/phone/callsettings/PopupList;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;->this$0:Lcom/android/phone/callsettings/PopupList;

    # getter for: Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->access$600(Lcom/android/phone/callsettings/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;->this$0:Lcom/android/phone/callsettings/PopupList;

    # getter for: Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->access$600(Lcom/android/phone/callsettings/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;->this$0:Lcom/android/phone/callsettings/PopupList;

    # getter for: Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->access$600(Lcom/android/phone/callsettings/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/PopupList$Item;

    iget v0, v0, Lcom/android/phone/callsettings/PopupList$Item;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;->this$0:Lcom/android/phone/callsettings/PopupList;

    # getter for: Lcom/android/phone/callsettings/PopupList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->access$700(Lcom/android/phone/callsettings/PopupList;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;->this$0:Lcom/android/phone/callsettings/PopupList;

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/phone/callsettings/PopupList;->text:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/PopupList;->access$802(Lcom/android/phone/callsettings/PopupList;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;->this$0:Lcom/android/phone/callsettings/PopupList;

    # getter for: Lcom/android/phone/callsettings/PopupList;->text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->access$800(Lcom/android/phone/callsettings/PopupList;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;->this$0:Lcom/android/phone/callsettings/PopupList;

    # getter for: Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/PopupList;->access$600(Lcom/android/phone/callsettings/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/PopupList$Item;

    iget-object v0, v0, Lcom/android/phone/callsettings/PopupList$Item;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
