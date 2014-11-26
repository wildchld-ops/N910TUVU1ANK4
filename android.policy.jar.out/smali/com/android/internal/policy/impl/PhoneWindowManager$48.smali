.class Lcom/android/internal/policy/impl/PhoneWindowManager$48;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$multiWindowType:I

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->val$visibility:I

    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->val$multiWindowType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->val$visibility:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->val$multiWindowType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->setCocktailBarVisibility(II)V

    :cond_0
    return-void
.end method
