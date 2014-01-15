.class Lcom/android/settings_ex/autohaptic/AutoHapticSettings$1;
.super Ljava/lang/Object;
.source "AutoHapticSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->refreshAppListUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$1;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;)I
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 305
    iget-object v0, p1, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 303
    check-cast p1, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;

    .end local p1
    check-cast p2, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$1;->compare(Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;)I

    move-result v0

    return v0
.end method
