.class public Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;
.super Ljava/lang/Object;
.source "IpNumberDelete.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IpNumberDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteItem"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;",
            ">;"
        }
    .end annotation
.end field

.field private checked:Z

.field private number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/callsettings/IpNumberDelete;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/IpNumberDelete;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem$1;-><init>(Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/callsettings/IpNumberDelete;Ljava/lang/String;Z)V
    .locals 1
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem$1;-><init>(Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    iput-object p2, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->number:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->checked:Z

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->number:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->checked:Z

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->checked:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
