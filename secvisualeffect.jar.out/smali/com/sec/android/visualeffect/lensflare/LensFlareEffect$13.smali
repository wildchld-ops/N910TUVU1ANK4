.class Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$13;
.super Ljava/lang/Object;
.source "LensFlareEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$13;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$13;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # getter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$2200(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "LensFlare"

    const-string v1, "LensFlare sound : release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$13;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # getter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$2200(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$13;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # setter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$2202(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$13;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # setter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$2302(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
