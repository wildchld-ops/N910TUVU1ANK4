.class Lcom/android/phone/BluetoothPhoneService$2;
.super Ljava/lang/Object;
.source "BluetoothPhoneService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$2;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/bluetooth/BluetoothProfile;

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$2;->this$0:Lcom/android/phone/BluetoothPhoneService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/phone/BluetoothPhoneService;->access$1102(Lcom/android/phone/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$2;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->access$1102(Lcom/android/phone/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method
