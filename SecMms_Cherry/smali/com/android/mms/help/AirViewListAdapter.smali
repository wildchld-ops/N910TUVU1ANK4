.class public Lcom/android/mms/help/AirViewListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AirViewListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/help/MessageDetails;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mLayoutResourceId:I

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field mMessageDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/help/MessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/help/MessageDetails;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/help/AirViewListAdapter;->mMessageDetails:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/help/AirViewListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/help/AirViewListAdapter$1;-><init>(Lcom/android/mms/help/AirViewListAdapter;)V

    iput-object v0, p0, Lcom/android/mms/help/AirViewListAdapter;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    iput p2, p0, Lcom/android/mms/help/AirViewListAdapter;->mLayoutResourceId:I

    iput-object p3, p0, Lcom/android/mms/help/AirViewListAdapter;->mMessageDetails:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/help/AirViewListAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/help/AirViewMainActivity;->mHasHovered:Z

    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/help/AirViewListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/help/AirViewListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AirViewListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    move-object v5, p2

    if-nez v5, :cond_0

    iget-object v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mLayoutResourceId:I

    const/4 v9, 0x0

    invoke-virtual {v3, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    :cond_0
    const v8, 0x7f0b006b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v8, 0x7f0b004a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v8, 0x7f0b006e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f0b006d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b006c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mMessageDetails:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/help/MessageDetails;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/help/MessageDetails;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/mms/help/MessageDetails;->getSub()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/mms/help/MessageDetails;->getTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/mms/help/MessageDetails;->getIcon()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mMessageDetails:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v8, v5}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    iget-object v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    iget-object v9, p0, Lcom/android/mms/help/AirViewListAdapter;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    invoke-virtual {v8, v9}, Lcom/android/mms/hover/ListHoverController;->setPostTask(Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;)V

    :goto_0
    return-object v5

    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
