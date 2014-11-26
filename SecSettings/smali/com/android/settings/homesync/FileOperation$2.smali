.class Lcom/android/settings/homesync/FileOperation$2;
.super Ljava/lang/Object;
.source "FileOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homesync/FileOperation;-><init>(Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperation;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperation$2;->this$0:Lcom/android/settings/homesync/FileOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$2;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->futureTaskHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->access$300(Lcom/android/settings/homesync/FileOperation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homesync/FileOperation$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/homesync/FileOperation$2$1;-><init>(Lcom/android/settings/homesync/FileOperation$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
