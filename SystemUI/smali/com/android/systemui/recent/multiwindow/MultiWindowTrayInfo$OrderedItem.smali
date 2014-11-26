.class public Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;
.super Ljava/lang/Object;
.source "MultiWindowTrayInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;",
        ">;"
    }
.end annotation


# instance fields
.field mDuplicatedOrder:Z

.field mItem:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

.field mOrder:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;I)V
    .locals 0
    .param p1    # Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mItem:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    iput p2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mOrder:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;)I
    .locals 2
    .param p1    # Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    iget v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mOrder:I

    invoke-virtual {p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->getOrder()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mDuplicatedOrder:Z

    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mOrder:I

    invoke-virtual {p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->compareTo(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;)I

    move-result v0

    return v0
.end method

.method public getItem()Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mItem:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mOrder:I

    return v0
.end method
