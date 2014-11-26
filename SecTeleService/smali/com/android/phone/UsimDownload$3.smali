.class Lcom/android/phone/UsimDownload$3;
.super Ljava/lang/Object;
.source "UsimDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsimDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsimDownload;


# direct methods
.method constructor <init>(Lcom/android/phone/UsimDownload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownload$3;->this$0:Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/UsimDownload$3;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v1, p0, Lcom/android/phone/UsimDownload$3;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/android/phone/UsimDownload;->access$100(Lcom/android/phone/UsimDownload;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/UsimDownload;->startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method
