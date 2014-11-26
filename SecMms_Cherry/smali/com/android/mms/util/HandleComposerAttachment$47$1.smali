.class Lcom/android/mms/util/HandleComposerAttachment$47$1;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment$47;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/HandleComposerAttachment$47;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment$47;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$47$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$47;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$47$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$47$1;->val$location:Landroid/location/Location;

    if-eqz v2, :cond_0

    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "NW onLocationChanged"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/util/MapsApi;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$47$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$47;

    iget-object v2, v2, Lcom/android/mms/util/HandleComposerAttachment$47;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/mms/util/MapsApi;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$47$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$47;

    iget-object v2, v2, Lcom/android/mms/util/HandleComposerAttachment$47;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$47$1;->val$location:Landroid/location/Location;

    invoke-virtual {v0, v3}, Lcom/android/mms/util/MapsApi;->handleOnLocationChanged(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/mms/util/HandleComposerAttachment;->access$1902(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$47$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$47;

    iget-object v2, v2, Lcom/android/mms/util/HandleComposerAttachment$47;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mMyLocationHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$2100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "NW onLocationChanged location is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
