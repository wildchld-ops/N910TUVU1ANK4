.class Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$4;
.super Ljava/lang/Object;
.source "KeyguardEffectViewGeometricMosaic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->clearEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->mRenderer:Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;->clearEffect()V

    return-void
.end method
