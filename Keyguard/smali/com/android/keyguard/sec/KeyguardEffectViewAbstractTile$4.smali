.class Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$4;
.super Ljava/lang/Object;
.source "KeyguardEffectViewAbstractTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->clearEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mRenderer:Lcom/sec/android/visualeffect/abstracttile/AbstractTileRenderer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;)Lcom/sec/android/visualeffect/abstracttile/AbstractTileRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/abstracttile/AbstractTileRenderer;->clearEffect()V

    return-void
.end method
