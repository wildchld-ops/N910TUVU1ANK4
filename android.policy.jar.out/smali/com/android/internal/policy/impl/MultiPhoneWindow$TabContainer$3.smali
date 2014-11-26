.class Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$3;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$3;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$3;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
