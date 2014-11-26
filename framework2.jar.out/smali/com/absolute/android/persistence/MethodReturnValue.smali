.class public Lcom/absolute/android/persistence/MethodReturnValue;
.super Ljava/lang/Object;
.source "MethodReturnValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/MethodReturnValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_apkOrJarPath:Ljava/lang/String;

.field private m_returnValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/absolute/android/persistence/MethodReturnValue$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/MethodReturnValue$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/MethodReturnValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1    # Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_returnValue:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_returnValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/MethodReturnValue$1;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # Lcom/absolute/android/persistence/MethodReturnValue$1;

    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_returnValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApkOrJarPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_returnValue:Ljava/lang/Object;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_returnValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
