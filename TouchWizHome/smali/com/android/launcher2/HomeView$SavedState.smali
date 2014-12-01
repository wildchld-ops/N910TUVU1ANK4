.class Lcom/android/launcher2/HomeView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/launcher2/HomeView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field INVALID:I

.field currentScreen:I

.field darkenLayerVisibility:I

.field folderBundle:Landroid/os/Bundle;

.field inQuickView:Z

.field pendingAddCellX:I

.field pendingAddCellY:I

.field pendingAddContainer:J

.field pendingAddDropPosX:I

.field pendingAddDropPoxY:I

.field pendingAddScreen:I

.field pendingAddSecretItem:I

.field pendingAddSpanX:I

.field pendingAddSpanY:I

.field quickViewDeleteIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher2/HomeView$SavedState$1;

    invoke-direct {v0}, Lcom/android/launcher2/HomeView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSecretItem:I

    iput-boolean v1, p0, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    iget v2, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    iput v1, p0, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSecretItem:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSecretItem:I

    iput-boolean v2, p0, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->INVALID:I

    iput v0, p0, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    iput v2, p0, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSecretItem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
