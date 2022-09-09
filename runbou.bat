dotnet sonarscanner begin /k:dotnetchecker /o:hanyorg /d:sonar.login=df7b579f7d7776d9866cb640597f4b7834d17e12 /d:sonar.host.url=https://sonarcloud.io
dotnet build <path to solution.sln>
dotnet sonarscanner end /d:sonar.login="df7b579f7d7776d9866cb640597f4b7834d17e12"