.class Lcom/android/mms/freemessage/FreeMessageReceiverService$3;
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

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$3;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    iput-object p2, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$3;->val$fileUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$3;->val$thumbUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$3;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$3;->val$fileUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$3;->val$thumbUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    # invokes: Lcom/android/mms/freemessage/FreeMessageReceiverService;->createImageThumbnail(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/freemessage/FreeMessageReceiverService;->access$000(Lcom/android/mms/freemessage/FreeMessageReceiverService;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Z

    return-void
.end method
