.class Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$2;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$2;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "selected"

    .prologue
    .line 478
    const-string v0, "MyPlaceSettings"

    const-string v1, "Select method item is clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method
