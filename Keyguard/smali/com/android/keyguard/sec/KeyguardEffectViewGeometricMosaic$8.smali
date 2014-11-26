.class Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$8;
.super Ljava/lang/Object;
.source "KeyguardEffectViewGeometricMosaic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V
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

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$8;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$8;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->access$400(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V

    return-void
.end method
