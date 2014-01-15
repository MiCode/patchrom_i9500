.class public Lcom/android/settings_ex/ChooseLockGeneric;
.super Landroid/preference/PreferenceActivity;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
    }
.end annotation


# static fields
.field public static final INTELLIGENT_ROTATION_MODE:Ljava/lang/String; = "intelligent_rotation_mode"

.field private static final TAG:Ljava/lang/String; = "ChooseLockGeneric"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 77
    .local v0, modIntent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    return-object v0
.end method
