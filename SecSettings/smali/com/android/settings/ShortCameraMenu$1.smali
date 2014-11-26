.class Lcom/android/settings/ShortCameraMenu$1;
.super Ljava/lang/Object;
.source "ShortCameraMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ShortCameraMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ShortCameraMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/ShortCameraMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ShortCameraMenu$1;->this$0:Lcom/android/settings/ShortCameraMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu$1;->this$0:Lcom/android/settings/ShortCameraMenu;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kg_enable_camera_widget_type"

    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu$1;->this$0:Lcom/android/settings/ShortCameraMenu;

    # getter for: Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/ShortCameraMenu;->access$000(Lcom/android/settings/ShortCameraMenu;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu$1;->this$0:Lcom/android/settings/ShortCameraMenu;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
