.class Lcom/android/launcher2/ShadowGen$CallbackEntry$1;
.super Ljava/lang/Object;
.source "ShadowGen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ShadowGen$CallbackEntry;->post(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ShadowGen$CallbackEntry;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ShadowGen$CallbackEntry;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ShadowGen$CallbackEntry$1;->this$0:Lcom/android/launcher2/ShadowGen$CallbackEntry;

    iput-object p2, p0, Lcom/android/launcher2/ShadowGen$CallbackEntry$1;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$CallbackEntry$1;->this$0:Lcom/android/launcher2/ShadowGen$CallbackEntry;

    iget-object v0, v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;->callback:Lcom/android/launcher2/ShadowGen$GeneratedCallback;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$CallbackEntry$1;->val$b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/android/launcher2/ShadowGen$GeneratedCallback;->onShadowGenerated(Landroid/graphics/Bitmap;)V

    return-void
.end method
