.class Lcom/android/mms/freemessage/FreeMessageReceiverService$4;
.super Ljava/lang/Object;
.source "FreeMessageReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FreeMessageReceiverService;->creatOriginalThumbnail(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

.field final synthetic val$fileUri:Landroid/net/Uri;

.field final synthetic val$thumbUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FreeMessageReceiverService;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$4;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    iput-object p2, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$4;->val$fileUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$4;->val$thumbUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$4;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$4;->val$fileUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$4;->val$thumbUri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/freemessage/FreeMessageReceiverService;->createVideoThumbnail(Landroid/net/Uri;Landroid/net/Uri;)Z
    invoke-static {v0, v1, v2}, Lcom/android/mms/freemessage/FreeMessageReceiverService;->access$100(Lcom/android/mms/freemessage/FreeMessageReceiverService;Landroid/net/Uri;Landroid/net/Uri;)Z

    return-void
.end method
