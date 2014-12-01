.class Lcom/android/settings/PreloadAppUpdate$1;
.super Ljava/lang/Object;
.source "PreloadAppUpdate.java"

# interfaces
.implements Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PreloadAppUpdate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreloadAppUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/PreloadAppUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PreloadAppUpdate$1;->this$0:Lcom/android/settings/PreloadAppUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate$1;->this$0:Lcom/android/settings/PreloadAppUpdate;

    # getter for: Lcom/android/settings/PreloadAppUpdate;->preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;
    invoke-static {v0}, Lcom/android/settings/PreloadAppUpdate;->access$000(Lcom/android/settings/PreloadAppUpdate;)Lcom/sec/android/samsungapps/util/PreloadUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->release()V

    return-void
.end method
