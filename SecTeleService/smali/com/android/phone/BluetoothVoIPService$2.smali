.class Lcom/android/phone/BluetoothVoIPService$2;
.super Ljava/lang/Object;
.source "BluetoothVoIPService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothVoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothVoIPService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothVoIPService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BluetoothVoIPService$2;->this$0:Lcom/android/phone/BluetoothVoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/bluetooth/BluetoothProfile;

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService$2;->this$0:Lcom/android/phone/BluetoothVoIPService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/phone/BluetoothVoIPService;->access$702(Lcom/android/phone/BluetoothVoIPService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService$2;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothVoIPService;->access$702(Lcom/android/phone/BluetoothVoIPService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method
