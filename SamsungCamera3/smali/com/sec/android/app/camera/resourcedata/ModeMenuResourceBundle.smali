.class public final Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
.source "ModeMenuResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle$Comparator;
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mOrder:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1
    .param p1    # [I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mOrder:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    iget v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mOrder:I

    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mName:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mOrder:I

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mPackageName:Ljava/lang/String;

    return-void
.end method
