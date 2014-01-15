.class Lcom/android/settings_ex/FeatureSettings$3;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FeatureSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FeatureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FeatureSettings;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/settings_ex/FeatureSettings$3;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings$3;->this$0:Lcom/android/settings_ex/FeatureSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/settings_ex/FeatureSettings;->turnOnEasyMode(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/FeatureSettings;->access$600(Lcom/android/settings_ex/FeatureSettings;Z)V

    .line 843
    return-void
.end method
