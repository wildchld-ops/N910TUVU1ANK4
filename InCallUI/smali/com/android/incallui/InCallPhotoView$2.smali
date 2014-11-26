.class Lcom/android/incallui/InCallPhotoView$2;
.super Ljava/lang/Object;
.source "InCallPhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPhotoView;

.field final synthetic val$d:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPhotoView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPhotoView$2;->this$0:Lcom/android/incallui/InCallPhotoView;

    iput-object p2, p0, Lcom/android/incallui/InCallPhotoView$2;->val$d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView$2;->this$0:Lcom/android/incallui/InCallPhotoView;

    iget-object v1, p0, Lcom/android/incallui/InCallPhotoView$2;->val$d:Landroid/graphics/drawable/Drawable;

    # invokes: Lcom/android/incallui/InCallPhotoView;->makeBlurEffectIfNeeded(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1}, Lcom/android/incallui/InCallPhotoView;->access$300(Lcom/android/incallui/InCallPhotoView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
