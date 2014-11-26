.class Lcom/android/mms/ui/ComposeMessageFragment$101$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$101;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$101;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$101;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$101$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$101;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$101$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$101;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$101;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocationSensor:Lcom/android/mms/util/LocationSensor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/util/LocationSensor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/util/LocationSensor;->controlLocationSensor(I)V

    return-void
.end method
