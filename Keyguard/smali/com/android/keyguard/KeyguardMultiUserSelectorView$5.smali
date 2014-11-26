.class Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;
.super Ljava/lang/Object;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMultiUserSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # invokes: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->clickArrowButton()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$200(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    return-void
.end method
