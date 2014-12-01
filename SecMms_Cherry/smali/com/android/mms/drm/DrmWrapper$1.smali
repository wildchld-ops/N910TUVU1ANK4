.class Lcom/android/mms/drm/DrmWrapper$1;
.super Ljava/lang/Object;
.source "DrmWrapper.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/drm/DrmWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/drm/DrmWrapper;


# direct methods
.method constructor <init>(Lcom/android/mms/drm/DrmWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/drm/DrmWrapper$1;->this$0:Lcom/android/mms/drm/DrmWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v0

    const/16 v1, 0x7d6

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v0

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
