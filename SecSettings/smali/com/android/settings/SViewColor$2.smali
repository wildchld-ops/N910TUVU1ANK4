.class Lcom/android/settings/SViewColor$2;
.super Ljava/lang/Object;
.source "SViewColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewColor;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_use_all"

    iget-object v2, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    # getter for: Lcom/android/settings/SViewColor;->mInitUseAll:I
    invoke-static {v2}, Lcom/android/settings/SViewColor;->access$100(Lcom/android/settings/SViewColor;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_random"

    iget-object v2, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    # getter for: Lcom/android/settings/SViewColor;->mInitRandom:I
    invoke-static {v2}, Lcom/android/settings/SViewColor;->access$200(Lcom/android/settings/SViewColor;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
