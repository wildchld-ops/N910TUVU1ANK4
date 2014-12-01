.class Lcom/android/settings/nearby/NearbyEnabler$8;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/NearbyEnabler;->requestWifiCheckingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler$8;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/nearby/NearbyEnabler;->isShowWifiCheckingPopup:Z
    invoke-static {v1}, Lcom/android/settings/nearby/NearbyEnabler;->access$1502(Z)Z

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler$8;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # invokes: Lcom/android/settings/nearby/NearbyEnabler;->switchPreference(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/nearby/NearbyEnabler;->access$1800(Lcom/android/settings/nearby/NearbyEnabler;Z)V

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler$8;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
