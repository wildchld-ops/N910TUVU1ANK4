.class Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;
.super Ljava/lang/Object;
.source "AutoHapticSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autohaptic/AutoHapticSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncludedApps"
.end annotation


# instance fields
.field mHasVibPerm:Z

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/String;

.field mPackageInfo:Landroid/content/pm/PackageInfo;

.field mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/autohaptic/AutoHapticSettings;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean p5, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mHasVibPerm:Z

    iput-object p6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method
