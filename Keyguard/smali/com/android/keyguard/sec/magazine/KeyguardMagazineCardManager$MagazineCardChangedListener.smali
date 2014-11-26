.class public interface abstract Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MagazineCardChangedListener"
.end annotation


# virtual methods
.method public abstract cardAdded(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
.end method

.method public abstract cardRemoved(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
.end method

.method public abstract cardUpdated(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
.end method
