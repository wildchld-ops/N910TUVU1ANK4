.class Lcom/android/settings/SViewColor2014$5;
.super Ljava/lang/Object;
.source "SViewColor2014.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewColor2014;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor2014;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor2014;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewColor2014$5;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/SViewColor2014$5;->this$0:Lcom/android/settings/SViewColor2014;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/SViewColor2014;->mIsOptionMenuFocused:Z
    invoke-static {v0, v1}, Lcom/android/settings/SViewColor2014;->access$102(Lcom/android/settings/SViewColor2014;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$5;->this$0:Lcom/android/settings/SViewColor2014;

    # invokes: Lcom/android/settings/SViewColor2014;->setfocusButton(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$5;->this$0:Lcom/android/settings/SViewColor2014;

    # setter for: Lcom/android/settings/SViewColor2014;->mIsOptionMenuFocused:Z
    invoke-static {v0, v2}, Lcom/android/settings/SViewColor2014;->access$102(Lcom/android/settings/SViewColor2014;Z)Z

    goto :goto_0
.end method
