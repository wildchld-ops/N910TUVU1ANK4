.class Lcom/android/settings/myplace/MyPlaceProfileSettings$2$1;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings$2;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/myplace/MyPlaceProfileSettings$2;

.field final synthetic val$mImm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings$2;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$2$1;->this$1:Lcom/android/settings/myplace/MyPlaceProfileSettings$2;

    iput-object p2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$2$1;->val$mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$2$1;->val$mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$2$1;->this$1:Lcom/android/settings/myplace/MyPlaceProfileSettings$2;

    iget-object v1, v1, Lcom/android/settings/myplace/MyPlaceProfileSettings$2;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
