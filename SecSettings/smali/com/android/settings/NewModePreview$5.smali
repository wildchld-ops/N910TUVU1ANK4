.class Lcom/android/settings/NewModePreview$5;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewModePreview;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewModePreview;


# direct methods
.method constructor <init>(Lcom/android/settings/NewModePreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/NewModePreview$5;->this$0:Lcom/android/settings/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/NewModePreview$5;->this$0:Lcom/android/settings/NewModePreview;

    # getter for: Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/NewModePreview;->access$000(Lcom/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NewModePreview$5;->this$0:Lcom/android/settings/NewModePreview;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/NewModePreview$5;->this$0:Lcom/android/settings/NewModePreview;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewModePreview$5;->this$0:Lcom/android/settings/NewModePreview;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/NewModePreview$5;->this$0:Lcom/android/settings/NewModePreview;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    iget-object v2, p0, Lcom/android/settings/NewModePreview$5;->this$0:Lcom/android/settings/NewModePreview;

    # getter for: Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/NewModePreview;->access$000(Lcom/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
