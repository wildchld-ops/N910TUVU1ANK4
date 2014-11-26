.class final Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;
.super Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback$Stub;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktailBarShowDelegate"
.end annotation


# instance fields
.field private mShowListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;

.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;)V
    .locals 0
    .param p2    # Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;->mShowListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;

    return-void
.end method


# virtual methods
.method public onShown(Landroid/os/IBinder;)V
    .locals 1
    .param p1    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;->mShowListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;->mShowListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method
