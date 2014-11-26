.class Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnSlidingPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x12


# instance fields
.field bottomSlidingPendingIntent:Landroid/app/PendingIntent;

.field bottomThresHold:I

.field downPendingIntent:Landroid/app/PendingIntent;

.field leftSlidingPendingIntent:Landroid/app/PendingIntent;

.field leftThresHold:I

.field rightSlidingPendingIntent:Landroid/app/PendingIntent;

.field rightThresHold:I

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field topSlidingPendingIntent:Landroid/app/PendingIntent;

.field topThresHold:I

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # Landroid/app/PendingIntent;
    .param p8    # Landroid/app/PendingIntent;
    .param p9    # Landroid/app/PendingIntent;
    .param p10    # Landroid/app/PendingIntent;
    .param p11    # Landroid/app/PendingIntent;

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    iput p2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    iput p3, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    iput p4, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    iput p5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    iput p6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    iput-object p7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    iput-object p8, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    iput-object p9, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    iput-object p10, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    iput-object p11, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2    # Landroid/os/Parcel;

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    :cond_4
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;

    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string v0, "SetOnSlidingPendingIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_2
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_3
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_4
.end method
