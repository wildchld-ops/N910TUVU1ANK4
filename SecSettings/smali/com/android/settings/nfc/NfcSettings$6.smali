.class Lcom/android/settings/nfc/NfcSettings$6;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcSettings;->updateCuePosY(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcSettings;

.field final synthetic val$posApapter:I


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$6;->this$0:Lcom/android/settings/nfc/NfcSettings;

    iput p2, p0, Lcom/android/settings/nfc/NfcSettings$6;->val$posApapter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    const-string v0, "NfcSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCuePosY.onScroll : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$6;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mSbeamCuePosY:F
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1300(Lcom/android/settings/nfc/NfcSettings;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/settings/nfc/NfcSettings$6;->val$posApapter:I

    if-gt p2, v0, :cond_0

    add-int v0, p2, p3

    iget v1, p0, Lcom/android/settings/nfc/NfcSettings$6;->val$posApapter:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$6;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1400(Lcom/android/settings/nfc/NfcSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    const-string v0, "NfcSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
