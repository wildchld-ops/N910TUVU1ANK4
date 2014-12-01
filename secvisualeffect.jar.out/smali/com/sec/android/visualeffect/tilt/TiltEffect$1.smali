.class Lcom/sec/android/visualeffect/tilt/TiltEffect$1;
.super Ljava/lang/Object;
.source "TiltEffect.java"

# interfaces
.implements Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/tilt/TiltEffect;->initTiltEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/tilt/TiltEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/tilt/TiltEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltEffect;->mAlphaImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->access$000(Lcom/sec/android/visualeffect/tilt/TiltEffect;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
