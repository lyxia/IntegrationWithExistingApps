'use strict'

import React from 'react'
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  NativeModules
} from 'react-native'

var CalendarManager = NativeModules.CalendarManager;
CalendarManager.doSomethingWithString('Birthday Party', 4, 2);

class IntegrationWithExistingApps extends React.Component {
  render() {
    var contents = this.props["scores"].map(
      score => <Text key={score.name}> {score.name}:{score.value}{"\n"} </Text>
    )
    return (
      <View style={styles.container}>
        <Text style={styles.highScoresTitles}>
          2048 High Scores!
        </Text>
        <Text style={styles.scores}>
          {contents}
        </Text>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container:{
    flex:1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF'
  },
  highScoresTitles: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5
  }
})

AppRegistry.registerComponent('IntegrationWithExistingApps', () => IntegrationWithExistingApps)
