.class Lcom/android/mms/MmsApp$3;
.super Ljava/lang/Object;
.source "MmsApp.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsApp;->initCountryIso()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/MmsApp$3;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCountryDetected(Landroid/location/Country;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/MmsApp$3;->this$0:Lcom/android/mms/MmsApp;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/MmsApp;->access$102(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "country detected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/MmsApp$3;->this$0:Lcom/android/mms/MmsApp;

    # getter for: Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/MmsApp;->access$100(Lcom/android/mms/MmsApp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
