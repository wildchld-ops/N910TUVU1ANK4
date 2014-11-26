.class Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$3;
.super Ljava/lang/Object;
.source "CheckDefaultSmsAppsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$3;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$3;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAniImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$600(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
