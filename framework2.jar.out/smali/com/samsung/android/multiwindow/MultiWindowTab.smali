.class public Lcom/samsung/android/multiwindow/MultiWindowTab;
.super Ljava/lang/Object;
.source "MultiWindowTab.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mStackId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowTab$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowTab$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowTab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    iput-object p2, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowTab;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowTab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowTab;->setTo(Lcom/samsung/android/multiwindow/MultiWindowTab;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowTab;->setStackId(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getStackId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    return v0
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setStackId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    return-void
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowTab;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    iget-object v0, p1, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",min_bound{port=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
