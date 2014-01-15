.class Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$5;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->showResetCriteriaDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;I)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    iput p2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 693
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete criteria : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$5;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 695
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1500(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 696
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)V

    .line 697
    return-void
.end method
